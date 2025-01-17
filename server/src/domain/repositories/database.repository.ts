import { Version } from '../domain.constant';

export enum DatabaseExtension {
  CUBE = 'cube',
  EARTH_DISTANCE = 'earthdistance',
  VECTORS = 'vectors',
}

export const IDatabaseRepository = 'IDatabaseRepository';

export interface IDatabaseRepository {
  getExtensionVersion(extName: string): Promise<Version | null>;
  getPostgresVersion(): Promise<Version>;
  createExtension(extension: DatabaseExtension): Promise<void>;
  runMigrations(options?: { transaction?: 'all' | 'none' | 'each' }): Promise<void>;
}
